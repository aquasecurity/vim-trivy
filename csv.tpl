{{ range . }}
{{ $target := .Target }}
{{- if and (eq (len .Vulnerabilities) 0) (eq (len .Misconfigurations) 0) }}{{- else }}
{{- range .Vulnerabilities }}{{ $target }},1,[{{ .Severity }}] {{ .VulnerabilityID }} - {{ .Title }}
{{ end }}
{{- range .Misconfigurations }}{{ $target }},{{ if not .CauseMetadata }}1{{ else if .CauseMetadata.StartLine }}{{ .CauseMetadata.StartLine }}{{ else }}1{{ end }},[{{ .Severity }}] {{ .ID }} - {{ .Title}}
{{ end }}
{{ end -}}{{- end }}