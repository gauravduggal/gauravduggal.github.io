# Editing this site

The site is [al-folio](https://github.com/alshedivat/al-folio) (v1, Jekyll) with a small set of
local components on top. Almost everything you will want to change is **data**, not code.

## Where things live

| You want to change…                         | Edit this                                         |
| ------------------------------------------- | ------------------------------------------------- |
| Name, tagline, icon lines, buttons, photo    | `_data/profile.yml`                               |
| The "About me" text                          | `_pages/about.md` (Markdown below the front matter) |
| Highlights tiles                             | `_data/highlights.yml`                            |
| Order / presence of home-page sections       | `sections:` list at the top of `_pages/about.md`  |
| News items                                   | one file per item in `_news/`                     |
| Which news shows on the home page            | `highlight: true` in that news file               |
| Publications                                 | `_bibliography/papers.bib`: each paper is a clickable tile linking to `doi`, else `url`, else `arxiv` |
| Publication thumbnail                        | `preview = {key.jpg},` in the bib entry + image in `assets/img/publication_preview/` (480x360) |
| CV page                                      | `_data/cv.yml`                                    |
| Top menu                                     | `nav: true` + `nav_order:` in each `_pages/*.md`  |
| Colours (light + dark)                       | `_sass/gd/base/_tokens.scss`                      |

## Home page = a list of sections

`_pages/about.md` front matter:

```yaml
sections:
  - type: hero # _data/profile.yml
  - type: markdown # the Markdown body of the page
    id: about-me
    title: About me
    more: { label: Full CV, url: /cv/ }
  - type: tiles # any list in _data/, here _data/highlights.yml
    id: highlights
    title: Highlights
    data: highlights
  - type: news
    title: News
    limit: 5
    highlights_only: true
    images: false
    more: { label: All news, url: /news/ }
```

Reorder entries to reorder the page; delete an entry to remove a section.

| type           | renders                                   | extra keys                                              |
| -------------- | ----------------------------------------- | ------------------------------------------------------- |
| `hero`         | name, tagline, facts, buttons, photo      | `data:` (default `profile`)                             |
| `markdown`     | free text                                 | `body:` (Markdown); default is the page body            |
| `tiles`        | image-left / text-right tiles             | `data:` (a `_data/` file), `limit:`, `variant:` (`md`/`sm`) |
| `news`         | news list                                 | `limit:`, `highlights_only:`, `images:`, `group_by_year:` |
| `publications` | papers with `selected = {true}` in the bib | —                                                       |
| `contact`      | social icons from `_data/socials.yml`     | `text:` (Markdown)                                      |

Every section (except `hero`) also accepts `id`, `title`, `class` and `more: {label, url}`.

### Adding a new kind of section

1. Create `_includes/gd/sections/<type>.liquid`. It receives the section as `include.section`.
2. If it needs styles, create `_sass/gd/components/_<type>.scss` and add
   `@use "gd/components/<type>";` to `_sass/_custom.scss`.
3. Reuse the UI building blocks instead of writing new markup: `gd/ui/tile.liquid`,
   `gd/ui/media.liquid`, `gd/ui/link_pills.liquid`.
4. Use it: `- type: <type>` in a page's `sections:` list.

### Using sections on another page

Any page can use `layout: about` and its own `sections:` list. A second set of tiles is just another
data file, for example `_data/projects.yml`, with `type: tiles` and `data: projects`.

## The tile interface

Every card on the site, the home Highlights and each paper on Publications, is drawn by one
component, `_includes/gd/ui/tile.liquid`. Anything that wants a card fills in these fields:

| field         | meaning                                                                |
| ------------- | ---------------------------------------------------------------------- |
| `title`       | heading (required)                                                     |
| `url`         | makes the **whole card** a link, with hover highlight                  |
| `image`       | picture on the left (480x360 works well); omit for a text-only card    |
| `image_alt`   | describes the picture                                                  |
| `image_fit`   | `true` shows the whole image (charts, posters); default crops to fill  |
| `authors`     | "A, B, C"; your name (`site.title`) is bolded automatically            |
| `venue`       | e.g. "IEEE Transactions on …, 2026"                                     |
| `note`        | short status, e.g. "Open access"                                       |
| `description` | one or two sentences                                                   |
| `links`       | list of `{ label, url }`, shown as small pills                         |
| `variant`     | `md` (tall, full-bleed image; default) or `sm` (compact thumbnail)     |

Two things use it:

- **Data → tile:** `_data/highlights.yml` entries already have these field names, so the
  `tiles` section passes each entry straight in.
- **BibTeX → tile:** `_includes/gd/adapters/bib_entry.liquid` converts each paper in
  `_bibliography/papers.bib` (title, authors, journal/booktitle, month, year, note,
  `doi`/`url`/`arxiv` → `url`, `preview` → `image`) and renders a `sm` tile.

To show tiles somewhere new, either add a `_data/<name>.yml` list and a `type: tiles` section, or
write a small adapter like `bib_entry.liquid` and include `gd/ui/tile.liquid` with the fields.

### Highlights entry (`_data/highlights.yml`)

```yaml
- title: Paper or award title
  image: /assets/img/research/my_image.jpg
  image_fit: true
  image_alt: What the image shows
  authors: Gaurav Duggal, Co Author
  venue: IEEE Transactions on …, 2026
  description: One or two sentences.
  # url: https://doi.org/…   # optional: make the whole card clickable
  links:
    - { label: Paper, url: "https://doi.org/…" }
    - { label: arXiv, url: "https://arxiv.org/abs/…" }
```

### Paper thumbnail

Add `preview = {key.jpg},` to the BibTeX entry and put the image in
`assets/img/publication_preview/`. Extra pills come from `arxiv` (when a `doi` exists), `pdf`,
`code` and `website` fields.

## News (`_news/YYYY-MM-DD-slug.md`)

```markdown
---
layout: post
date: 2026-04-15 15:59:00-0400
inline: true
related_posts: false
highlight: true # also show on the home page
image: /assets/img/research/hl_awards.jpg # optional picture on /news/
image_alt: "Torgersen Award poster"
image_fit: true # optional: show the whole image
---

One line. Links in Markdown: [paper](https://doi.org/…).
```

Only month and year are shown. `/news/` groups items by year automatically.

## Code map

```
_layouts/
  about.liquid                 page = loop over page.sections
  bib.liquid                   one line: jekyll-scholar paper -> adapters/bib_entry
_includes/gd/
  section.liquid               section shell (heading + "more" link), dispatches by type
  sections/                    one file per section type
    hero.liquid  markdown.liquid  tiles.liquid  news.liquid  publications.liquid  contact.liquid
  ui/                          reusable building blocks
    tile.liquid                THE card component (interface documented at the top)
    media.liquid               one picture (cover / fit)
    link_pills.liquid          row of small links
  adapters/
    bib_entry.liquid           BibTeX entry -> tile
  news/
    list.liquid                news list, flat or grouped by year
    item.liquid                one news row (optional picture)
_data/
  profile.yml                  hero content
  highlights.yml               highlight tiles
_sass/_custom.scss             imports everything below, in order
_sass/gd/
  base/       _tokens (colours, light+dark)  _base (type, navbar, footer)  _layout (section shell)
  components/ _buttons _media _pills _tile _hero _prose _news   (one per component, own mobile rules)
  pages/      _publications (page layout)  _legacy (styles for unpublished pages)
```

CSS class names follow `gd-<component>__<part>--<variant>`, e.g. `gd-tile__title`, `gd-tile--sm`,
`gd-news__item--media`. Older home-page classes (`gd-hero`, `gd-btn`, `gd-section`) keep short names.

Unpublished pages (`published: false`): `_pages/research.md`, `_pages/projects.md`,
`_pages/teaching.md`. Set `published: true` and `nav: true` to bring one back.

## Preview and checks (local, Windows)

- Preview: run `C:\website\devtools\preview.ps1`, then open http://127.0.0.1:4000/
- Link check: `python C:\website\devtools\check_links.py` (add `--internal` for an offline check)
- Deploy: push to `main`; GitHub Actions builds and publishes to the `gh-pages` branch.
  The workflow only runs when matching files change (pages, data, templates, `.bib`, assets,
  `.scss`, `_plugins/`); see the `paths:` list in `.github/workflows/deploy.yml`.
- Stylesheet caching: `_plugins/css_cache_bust.rb` fingerprints `main.css?v=…` from
  `assets/css/main.scss` + `_sass/**`, so browsers fetch new CSS after every style change.
  (The theme's own fingerprint never changed, which left visitors on stale CSS.)
