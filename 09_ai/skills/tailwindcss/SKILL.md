---
name: tailwindcss-styling
description: "Guidelines and best practices for Tailwind CSS utility-first styling."
---

# Tailwind CSS Styling Guide

Enforce consistency, performance, and clean layouts using Tailwind utility classes.

## Layout & Spacing
- Rely on Flexbox (`flex`, `flex-col`, `items-center`, `justify-between`) and Grid (`grid`, `grid-cols-*`, `gap-*`) layouts instead of floats or absolute alignments.
- Use standardized spacing classes (`p-*`, `m-*`, `gap-*`) to keep gaps uniform.

## Typography & Casing
- Keep font scaling readable (e.g. `text-xs`, `text-sm`, `text-lg`, `text-xl`).
- Use standard font weights (`font-normal`, `font-semibold`, `font-bold`).

## Responsive & Dark Mode
- Mobile-first approach: write classes for mobile displays, and use screen modifiers (`sm:`, `md:`, `lg:`, `xl:`) for larger viewports.
- Prefer semantic class variables (e.g., `bg-background`, `text-foreground`, `border-border`) over hardcoded color utilities (e.g. `bg-white`, `text-gray-900`) to natively support dark mode via the `.dark` class.

Example:
```html
<div class="bg-card text-foreground p-6 rounded-lg border border-border md:p-8">
  <h2 class="text-xl font-bold md:text-2xl">Tailwind Styling</h2>
</div>
```
