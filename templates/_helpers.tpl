{{/*
Common labels for songsApp
*/}}
{{- define "songsApp.labels" -}}
app.chart.deployDate: {{ dateInZone "2006-01-02" (now) "UTC" | quote }}
app.chart.version: {{ .Chart.AppVersion | quote }}
app: {{ .Values.songsApp.label }}
{{- end }}

{{/*
Common labels for resourcesApp
*/}}
{{- define "resourcesApp.labels" -}}
deployDate: {{ dateInZone "2006-01-02" (now) "UTC" | quote  }}
chartVersion: {{ .Chart.AppVersion | quote }}
app: {{ .Values.resourcesApp.label }}
{{- end }}
