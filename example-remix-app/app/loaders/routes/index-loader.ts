import appInsights from '~/services/app-insights.server';
import { json } from '@remix-run/react';

export default async function indexLoader() {
    appInsights.trackPageView(); // Manually call trackPageView to establish the current user/session/pageview
    appInsights.trackEvent({ name: 'PageView', properties: { page: 'Index' } });
    appInsights.flush(); // Manually flush the telemetry buffer

    return json({
        ENV: {
            APPLICATION_INSIGHTS_CONNECTION_STRING: process.env.APPLICATION_INSIGHTS_CONNECTION_STRING,
        },
    });
}
