export const config = {
    port: process.env.PORT || 3000,
    //should throw error early if env not available
    databaseUrl: process.env.DATABASE_URL || "postgresql://dummy:dummy@localhost:5432/dummy",
    auth: {
      secret: process.env.BETTER_AUTH_SECRET || "dummy-secret-change-me",
      url: process.env.BETTER_AUTH_URL || "http://localhost:3000",
    },
    oauth: {
      googleClientId: process.env.GOOGLE_CLIENT_ID || "",
      googleClientSecret: process.env.GOOGLE_CLIENT_SECRET || "",
      githubClientId: process.env.GITHUB_CLIENT_ID || "",
      githubClientSecret: process.env.GITHUB_CLIENT_SECRET || "",
    },
    frontend: {
      url: process.env.FRONTEND_URL || "http://localhost:3001",
    },
    
  };
  