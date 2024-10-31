import { json } from '@remix-run/react';

export default async function rootLoader() {
    return json({
        ENV: {
            APPLICATION_INSIGHTS_CONNECTION_STRING: process.env.APPLICATION_INSIGHTS_CONNECTION_STRING,
        },
    });
}
