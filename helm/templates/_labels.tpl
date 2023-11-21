{{- define "labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ default .Chart.AppVersion .Values.image.tag }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/component: {{ .Chart.Name }}
app.kubernetes.io/part-of: emobilty
{{- end }}