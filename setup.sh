#!/usr/bin/env bash
# setup.sh
# Run once after cloning this template to pre-fill project identity fields.
# Usage: bash setup.sh

set -e

# ── Helpers ───────────────────────────────────────────────────────────────────

# Replace all instances of a placeholder across every .md file in the project.
# Uses | as the sed delimiter so values with forward slashes are safe.
replace_all() {
  local placeholder="$1"
  local value="$2"
  # Escape characters that would break sed with | delimiter: \ and |
  local escaped
  escaped=$(printf '%s' "$value" | sed 's/[\|]/\&/g')
  find . -name "*.md" -exec sed -i "s|${placeholder}|${escaped}|g" {} +
}

print_section() {
  echo ""
  echo "── $1"
}

# ── Intro ─────────────────────────────────────────────────────────────────────

echo ""
echo "==============================="
echo "  Project Setup"
echo "==============================="
echo ""
echo "Fill in project identity fields. Press Enter to skip any field."
echo ""

# ── Collect inputs ────────────────────────────────────────────────────────────

read -p "Client name:                             " CLIENT_NAME
read -p "Brand name (Enter to copy client name):  " BRAND_NAME
read -p "Project / repo name:                     " PROJECT_NAME
read -p "Industry:                                " INDUSTRY
echo "Website type:"
echo "  1) Business  (lead gen, services, contact form)"
echo "  2) E-commerce  (product catalog, cart, checkout)"
read -p "  Enter 1 or 2: " WEBSITE_TYPE_CHOICE
case "$WEBSITE_TYPE_CHOICE" in
  1) WEBSITE_TYPE="Business" ;;
  2) WEBSITE_TYPE="E-commerce" ;;
  *) WEBSITE_TYPE="$WEBSITE_TYPE_CHOICE" ;;  # fallback: accept raw input
esac

read -p "Primary goal (e.g. Generate leads):      " PRIMARY_GOAL
read -p "Target audience (brief):                 " AUDIENCE
read -p "Budget tier (Starter / Professional / Premium): " BUDGET_TIER
read -p "Timeline:                                " TIMELINE
read -p "Contact email:                           " EMAIL
read -p "Tagline (or skip):                       " TAGLINE

# Brand name defaults to client name if left blank
if [ -z "$BRAND_NAME" ] && [ -n "$CLIENT_NAME" ]; then
  BRAND_NAME="$CLIENT_NAME"
fi

TODAY=$(date +%Y-%m-%d)

# ── Apply replacements ────────────────────────────────────────────────────────

echo ""
echo "Applying..."

[ -n "$CLIENT_NAME" ]  && replace_all "\[CLIENT_NAME\]"  "$CLIENT_NAME"
[ -n "$BRAND_NAME" ]   && replace_all "\[BRAND_NAME\]"   "$BRAND_NAME"
[ -n "$PROJECT_NAME" ] && replace_all "\[PROJECT_NAME\]" "$PROJECT_NAME"
[ -n "$INDUSTRY" ]     && replace_all "\[INDUSTRY\]"     "$INDUSTRY"
[ -n "$WEBSITE_TYPE" ] && replace_all "\[WEBSITE_TYPE\]" "$WEBSITE_TYPE"
[ -n "$PRIMARY_GOAL" ] && replace_all "\[PRIMARY_GOAL\]" "$PRIMARY_GOAL"
[ -n "$AUDIENCE" ]     && replace_all "\[AUDIENCE\]"     "$AUDIENCE"
[ -n "$BUDGET_TIER" ]  && replace_all "\[BUDGET_TIER\]"  "$BUDGET_TIER"
[ -n "$TIMELINE" ]     && replace_all "\[TIMELINE\]"     "$TIMELINE"
[ -n "$EMAIL" ]        && replace_all "\[EMAIL\]"        "$EMAIL"
[ -n "$TAGLINE" ]      && replace_all "\[TAGLINE\]"      "$TAGLINE"

replace_all "\[DATE\]" "$TODAY"

echo "Done."

# ── Remaining work checklist ──────────────────────────────────────────────────

echo ""
echo "==============================="
echo "  Fill these in next"
echo "==============================="

print_section "docs/project-brief.md  (fill this first)"
echo "  [ ] Business description"
echo "  [ ] Pages required"
echo "  [ ] Key requirements & constraints"
echo "  [ ] Competitive context"

print_section "docs/brand/design-system.md"
echo "  [ ] Color tokens (hex values)"
echo "  [ ] Font choices"
echo "  [ ] Type scale & spacing values"
echo "  [ ] Component specs (buttons, cards, forms)"

print_section "docs/brand/identity.md"
echo "  [ ] Brand personality adjectives"
echo "  [ ] Voice & tone rules"
echo "  [ ] Logo file paths & usage rules"

print_section "docs/brand/visual-references.md"
echo "  [ ] Inspiration sites"
echo "  [ ] Design direction notes"

print_section "docs/content/sitemap.md"
echo "  [ ] Full page list & URLs"
echo "  [ ] Section breakdown per page"

print_section "docs/content/copy.md"
echo "  [ ] All headlines, body copy, CTAs per page"

print_section "docs/technical/stack.md"
echo "  [ ] Framework & package choices"
echo "  [ ] Hosting config & env vars"

print_section "docs/technical/integrations.md"
echo "  [ ] Analytics tracking ID"
if [ "$WEBSITE_TYPE" = "E-commerce" ]; then
  echo "  [ ] Payment provider & keys (Stripe / Square)"
  echo "  [ ] Product catalog / inventory setup"
  echo "  [ ] Order confirmation emails"
else
  echo "  [ ] Contact form service & endpoint"
  echo "  [ ] Form success behavior"
fi

echo ""
echo "When docs are complete -> set status in PROJECT-GUIDE.md to 'In Development'"
echo ""

# ── Self-cleanup ──────────────────────────────────────────────────────────────

read -p "Delete this setup script? [y/N] " DELETE_SELF
if [[ "$DELETE_SELF" =~ ^[Yy]$ ]]; then
  rm -- "$0"
  echo "setup.sh removed."
fi

echo ""
echo "Start with: docs/project-brief.md"
echo ""
