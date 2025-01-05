{{/*
Common labels for songsApp
*/}}
{{- define "songsApp.labels" -}}
deployDate: {{ dateInZone "2006-01-02" (now) "UTC" | quote }}
chartVersion: {{ .Chart.AppVersion | quote }}
app: {{ .Values.songsApp.label }}
{{- end }}

{{/*
Common labels for resourcesApp
*/}}
{{- define "resourcesApp.labels" -}}
deployDate: {{ now | htmlDate | quote }}
chartVersion: {{ .Chart.AppVersion | quote }}
app: {{ .Values.resourcesApp.label }}`
{{- end }}

{{/*
Common labels for ConfigMap
*/}}
{{- define "configMap.labels" -}}
deployDate: {{ dateInZone "2006-01-02" (now) "UTC" | quote  }}
chartVersion: {{ .Chart.AppVersion | quote }}
{{- range $key, $val := .Values.configMap.labels }}
{{ $key }}: {{ $val | quote }}
{{- end }}
{{- end }}
