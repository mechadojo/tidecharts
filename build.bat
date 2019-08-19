protoc --dart_out=lib/src tide_chart.proto
protoc --java_out=java tide_chart.proto
protoc --csharp_out=csharp tide_chart.proto
protoc --python_out=python tide_chart.proto
protoc --cpp_out=cpp tide_chart.proto
protoc --plugin=protoc-gen-doc=.\bin\protoc-gen-doc.exe --doc_out=. --doc_opt=markdown,README.md tide_chart.proto


