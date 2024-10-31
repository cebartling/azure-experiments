import { ApplicationInsights } from '@microsoft/applicationinsights-web';

let appInsights: ApplicationInsights;

const getClientSideAppInsights = (connectionString: string): ApplicationInsights => {
    if (!appInsights) {
        appInsights = new ApplicationInsights({
            config: {
                connectionString
            }
        });
        appInsights.loadAppInsights();
    }
    return appInsights;
};

export default getClientSideAppInsights;