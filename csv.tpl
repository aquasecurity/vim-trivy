{{ range . }}
{{ $target := .Target }}
{{- if and (eq (len .Vulnerabilities) 0) (eq (len .Misconfigurations) 0) }}{{- else }}
{{- range .Vulnerabilities }}{{ $target }},1,[{{ .Severity }}] {{ .VulnerabilityID }} - {{ .Title }}
{{ end }}
{{- range .Misconfigurations }}{{ $target }},{{ if not .IacMetadata }}1{{ else if .IacMetadata.StartLine }}{{ .IacMetadata.StartLine }}{{ else }}1{{ end }},[{{ .Severity }}] {{ .ID }} - {{ .Title}}
{{ end }}
{{ end -}}{{- end }}