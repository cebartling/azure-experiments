export {};

declare global {
    interface Window {
        ENV: {
            [key: string]: string; // Adjust the type to match your `ENV` structure
        };
    }
}
