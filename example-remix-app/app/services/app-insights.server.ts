import { ApplicationInsights } from '@microsoft/applicationinsights-web';

const appInsights = new ApplicationInsights({
    config: {
        connectionString: process.env.APPLICATION_INSIGHTS_CONNECTION_STRING
    }
});
appInsights.loadAppInsights();

export default appInsights;
