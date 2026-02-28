# Design System

> AI: Use these tokens for all styling. Never hardcode colors, font sizes, or spacing values.

---

## Color Palette

| Token | Hex | Usage |
|---|---|---|
| `color-primary` | `#[HEX]` | CTAs, links, primary buttons |
| `color-primary-hover` | `#[HEX]` | Button hover state |
| `color-secondary` | `#[HEX]` | Accents, highlights |
| `color-text-primary` | `#[HEX]` | Headings, main body |
| `color-text-secondary` | `#[HEX]` | Subheadings, supporting text |
| `color-text-muted` | `#[HEX]` | Captions, metadata, placeholders |
| `color-bg-primary` | `#[HEX]` | Main page background |
| `color-bg-secondary` | `#[HEX]` | Alternate section background |
| `color-bg-accent` | `#[HEX]` | Highlighted sections, cards |
| `color-border` | `#[HEX]` | All borders and dividers |
| `color-success` | `#[HEX]` | Form success, confirmations |
| `color-error` | `#[HEX]` | Form errors, alerts |

---

## Typography

### Fonts

| Role | Family | Source |
|---|---|---|
| Heading | [FONT_NAME] | [Google Fonts / Adobe / Self-hosted] |
| Body | [FONT_NAME] | [Google Fonts / Adobe / Self-hosted] |
| Mono (optional) | [FONT_NAME] | [Source] |

### Type Scale

| Token | Size | Weight | Line Height | Usage |
|---|---|---|---|---|
| `font-h1` | [e.g., 3.5rem] | [e.g., 700] | [e.g., 1.1] | Page hero titles |
| `font-h2` | [e.g., 2.5rem] | [e.g., 700] | [e.g., 1.2] | Section headings |
| `font-h3` | [e.g., 1.75rem] | [e.g., 600] | [e.g., 1.3] | Subsection headings |
| `font-h4` | [e.g., 1.25rem] | [e.g., 600] | [e.g., 1.4] | Card titles, labels |
| `font-body-lg` | [e.g., 1.125rem] | [e.g., 400] | [e.g., 1.7] | Lead paragraphs |
| `font-body` | [e.g., 1rem] | [e.g., 400] | [e.g., 1.6] | Standard body copy |
| `font-body-sm` | [e.g., 0.875rem] | [e.g., 400] | [e.g., 1.5] | Captions, metadata |
| `font-label` | [e.g., 0.75rem] | [e.g., 600] | [e.g., 1.4] | Form labels, tags |

---

## Spacing Scale

| Token | Value | Common Use |
|---|---|---|
| `space-1` | [e.g., 4px] | Tight gaps, icon padding |
| `space-2` | [e.g., 8px] | Label-input gap, small stacks |
| `space-3` | [e.g., 12px] | — |
| `space-4` | [e.g., 16px] | Standard component padding |
| `space-6` | [e.g., 24px] | Card padding, list gaps |
| `space-8` | [e.g., 32px] | Section inner padding |
| `space-12` | [e.g., 48px] | Between components |
| `space-16` | [e.g., 64px] | Between sections |
| `space-24` | [e.g., 96px] | Large section gaps |

---

## Border & Radius

| Token | Value |
|---|---|
| `border-width` | [e.g., 1px] |
| `border-color` | `color-border` |
| `radius-sm` | [e.g., 4px] |
| `radius-md` | [e.g., 8px] |
| `radius-lg` | [e.g., 16px] |
| `radius-full` | [e.g., 9999px] |

---

## Shadows

| Token | Value | Usage |
|---|---|---|
| `shadow-sm` | [CSS value] | Cards, inputs |
| `shadow-md` | [CSS value] | Dropdowns, modals |
| `shadow-lg` | [CSS value] | Elevated elements |

---

## UI Components

### Buttons

| Variant | Background | Text | Border | Hover |
|---|---|---|---|---|
| Primary | `color-primary` | White | None | `color-primary-hover` |
| Secondary | Transparent | `color-primary` | `color-primary` | Light primary bg |
| Ghost | Transparent | `color-text-secondary` | `color-border` | `color-bg-secondary` |

- Padding: `space-3` vertical / `space-6` horizontal
- Border radius: `radius-md`
- Font: `font-label` weight
- Transition: `200ms ease`

### Cards

- Background: `color-bg-primary` or `color-bg-accent`
- Border: `border-width` `color-border`
- Border radius: `radius-lg`
- Padding: `space-6`
- Shadow: `shadow-sm`

### Forms

- Input border: `color-border`
- Input focus: `color-primary`
- Input radius: `radius-md`
- Label: `font-label`
- Error state: `color-error`
- Success state: `color-success`

### Navigation

- Background: [e.g., `color-bg-primary` / transparent over hero]
- Link style: `font-body` weight `600`, `color-text-primary`
- Active/hover: `color-primary`
- Mobile: [e.g., Hamburger → slide-in drawer / accordion]

---

## Layout

| Token | Value |
|---|---|
| `container-max-width` | [e.g., 1280px] |
| `container-padding` | [e.g., space-6 mobile / space-12 desktop] |
| `grid-columns` | [e.g., 12-col] |
| `grid-gap` | [e.g., space-6] |
