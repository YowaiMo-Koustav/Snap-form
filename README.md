# Snap-form

A Turborepo monorepo with Bun workspaces powering the Snap-form platform.

## What's inside?

This Turborepo includes the following packages/apps:

### Apps and Packages

**1. `web` (Frontend)**
- **Idea:** The main user-facing Next.js application for Snap-form.
- **Technologies:** Next.js 16, React 19, TypeScript, Tailwind CSS v4.

**2. `api` (Backend)**
- **Idea:** The core backend server that handles requests from the web app.
- **Technologies:** Express.js, TypeScript, Node.js.

**3. `worker` (Background Jobs)**
- **Idea:** A background service responsible for scheduled tasks and async processing.
- **Technologies:** Node.js, `node-cron`, TypeScript.

**Shared Packages:**
- `@repo/ui`: A React component library shared by frontend applications.
- `@repo/eslint-config`: Shared `eslint` configurations.
- `@repo/typescript-config`: Shared `tsconfig.json`s used throughout the monorepo.


Each package/app is 100% [TypeScript](https://www.typescriptlang.org/).

### Utilities

This Turborepo has some additional tools already set up for you:

- [TypeScript](https://www.typescriptlang.org/) for static type checking
- [ESLint](https://eslint.org/) for code linting
- [Prettier](https://prettier.io) for code formatting

### Build

To build all apps and packages, run the following command:

```sh
bun run build
```

You can build a specific package using a [filter](https://turborepo.dev/docs/crafting-your-repository/running-tasks#using-filters):

```sh
bun exec turbo build --filter=web
bun exec turbo build --filter=api
bun exec turbo build --filter=worker
```

### Develop

To develop all apps and packages, run the following command:

```sh
bun run dev
```

This will concurrently start:
- `apps/web` — Next.js frontend at [http://localhost:3000](http://localhost:3000)
- `apps/api` — Express API at [http://localhost:3001](http://localhost:3001)
- `apps/worker` — Background cron worker

You can develop a specific package using a [filter](https://turborepo.dev/docs/crafting-your-repository/running-tasks#using-filters):

```sh
bun exec turbo dev --filter=web
bun exec turbo dev --filter=api
bun exec turbo dev --filter=worker
```

### Remote Caching

> [!TIP]
> Vercel Remote Cache is free for all plans. Get started today at [vercel.com](https://vercel.com/signup?utm_source=remote-cache-sdk&utm_campaign=free_remote_cache).

Turborepo can use a technique known as [Remote Caching](https://turborepo.dev/docs/core-concepts/remote-caching) to share cache artifacts across machines, enabling you to share build caches with your team and CI/CD pipelines.

By default, Turborepo will cache locally. To enable Remote Caching you will need an account with Vercel. If you don't have an account you can [create one](https://vercel.com/signup?utm_source=turborepo-examples), then enter the following commands:

```sh
cd snap-form
bun exec turbo login
bun exec turbo link
```

## Useful Links

Learn more about the power of Turborepo:

- [Tasks](https://turborepo.dev/docs/crafting-your-repository/running-tasks)
- [Caching](https://turborepo.dev/docs/crafting-your-repository/caching)
- [Remote Caching](https://turborepo.dev/docs/core-concepts/remote-caching)
- [Filtering](https://turborepo.dev/docs/crafting-your-repository/running-tasks#using-filters)
- [Configuration Options](https://turborepo.dev/docs/reference/configuration)
- [CLI Usage](https://turborepo.dev/docs/reference/command-line-reference)
