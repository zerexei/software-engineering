---
name: reactjs-dev
description: "Best practices, code patterns, and hooks for ReactJS frontend development."
---

# ReactJS Development Guide

Follow this guide to write clean, maintainable, and type-safe React functional components.

## Component Structure
- Use functional components (`const MyComponent: React.FC<Props> = ...`) with standard TypeScript.
- Define explicit interfaces or types for component props.
- Keep components small and focused. Break them down if they exceed 150 lines.
- Destructure props at the function signature level.

Example:
```tsx
interface ButtonProps {
  label: string;
  onClick: () => void;
  disabled?: boolean;
}

export const ActionButton: React.FC<ButtonProps> = ({ label, onClick, disabled = false }) => {
  return (
    <button onClick={onClick} disabled={disabled}>
      {label}
    </button>
  );
};
```

## Hook Conventions
- Follow the official Rules of Hooks (only call hooks at the top level; only call from React functions).
- Extract complex component state or data-fetching logic into custom hooks (e.g. `useFetchData`, `useAuth`).
- Memoize callbacks and calculations with `useCallback` and `useMemo` when passing dependencies down or performing expensive operations.

## State Management
- Prefer local component state (`useState`) unless data is shared across multiple non-parent/child components.
- Use `useReducer` for complex state transitions that depend on previous states.
- Avoid prop drilling by utilizing React Context for global state (e.g. themes, user sessions).
