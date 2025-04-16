# Koreo Helm Charts

Koreo Helm is a chart for the [https://koreo.dev](https://koreo.dev) project. The chart can be added using following command:

```bash
helm repo add koreo https://koreo.dev/helm
```

### Custom Resource Definitions

You can disable the CRD installation of the chart by using `--set crds.install=false` when installing the chart.
