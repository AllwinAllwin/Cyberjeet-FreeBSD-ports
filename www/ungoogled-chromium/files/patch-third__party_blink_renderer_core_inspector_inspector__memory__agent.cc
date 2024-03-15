--- third_party/blink/renderer/core/inspector/inspector_memory_agent.cc.orig	2023-11-04 07:08:51 UTC
+++ third_party/blink/renderer/core/inspector/inspector_memory_agent.cc
@@ -190,7 +190,7 @@ InspectorMemoryAgent::GetSamplingProfileById(uint32_t 
 
 Vector<String> InspectorMemoryAgent::Symbolize(
     const WebVector<const void*>& addresses) {
-#if BUILDFLAG(IS_LINUX) || BUILDFLAG(IS_CHROMEOS)
+#if BUILDFLAG(IS_LINUX) || BUILDFLAG(IS_CHROMEOS) || BUILDFLAG(IS_BSD)
   // TODO(alph): Move symbolization to the client.
   Vector<const void*> addresses_to_symbolize;
   for (const void* address : addresses) {