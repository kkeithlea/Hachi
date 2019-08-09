/*
    This Yara ruleset is under the GNU-GPLv2 license (http://www.gnu.org/licenses/gpl-2.0.html) and open to any user or organization, as
    long as you use it under this license.
*/

rule url : SuspiciousStrings{
    meta:
        author = "Antonio S. <asanchez@plutec.net>"
    strings:
        $url_regex = /https?:\/\/([\w\.-]+)([\/\w \.-]*)/ wide ascii
        $url_regex1 = /http?:\/\/([\w\.-]+)([\/\w \.-]*)/ wide ascii
    condition:
        any of them
}

