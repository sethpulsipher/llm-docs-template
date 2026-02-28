# Technical Stack

## Framework & Core

| Layer | Choice | Version | Notes |
|---|---|---|---|
| SSG / Framework | [e.g., Astro] | [e.g., v4] | [e.g., Islands architecture] |
| UI Components | [e.g., React] | [e.g., v18] | [e.g., For interactive islands only] |
| CSS | [e.g., Tailwind CSS] | [e.g., v4] | [Notes] |
| Language | [e.g., TypeScript] | [e.g., v5] | [strict mode / loose] |

## Key Packages

| Package | Purpose |
|---|---|
| [package-name] | [What it does] |
| [package-name] | [What it does] |

## Hosting & Deployment

| Setting | Value |
|---|---|
| Host | [e.g., Vercel / Netlify / Cloudflare Pages] |
| Repo | [REPO_URL] |
| Branch → Production | `main` |
| Branch → Preview | `dev` |
| Build command | [e.g., `npm run build`] |
| Output dir | [e.g., `dist`] |
| Node version | [e.g., 20] |
| Environment variables | See below |

## Environment Variables

| Variable | Description | Set In |
|---|---|---|
| `[VAR_NAME]` | [What it is] | [Host dashboard / .env] |
| `[VAR_NAME]` | [What it is] | [Host dashboard / .env] |

## File & Folder Conventions

| Path | Purpose |
|---|---|
| `src/components/` | Shared components |
| `src/layouts/` | Page layouts |
| `src/pages/` | Route pages |
| `src/styles/` | Global styles, tokens |
| `public/` | Static assets |
| `docs/` | This documentation |

## Code Conventions

- **Components:** [e.g., PascalCase filenames, named exports]
- **Styles:** [e.g., Tailwind utility classes — no custom CSS unless tokens required]
- **Images:** [e.g., Use `<Image />` component for automatic optimization]
- **Imports:** [e.g., Use `@/` path alias for `src/`]
