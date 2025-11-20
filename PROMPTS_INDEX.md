<div dir="rtl" style="text-align: right;">

# PROMPTS INDEX  
מפתח לפרומפטים של Docs-as-System mini

קובץ זה מרכז את כל הפרומפטים בשיטה  
ומסביר בקצרה את תפקידם ולקשר ביניהם.

---

## הבנת הקשר  
### prompt_understand_context.mini.md  
קורא את כל המסמכים  
מזהה סתירות  
ומכין קרקע למחזור פיתוח חדש.

---

## הכנת שלב  
### prompt_prepare_step.mini.md  
מזהה את השלב והמשימות הרלוונטיות מתוך תוכנית המימוש.

---

## ביצוע משימה  
### prompt_execute_task.mini.md  
מטפל בשינוי הקוד הקטן ביותר הנדרש לצורך המשימה.  
לא מבצע refactor.  
לא משנה קבצים שלא הוגדרו.

---

## בדיקה עצמית  
### prompt_self_check.mini.md  
בודק עקביות מול כל המסמכים.  
בודק שלא חרגו מהמשימה.  
בודק שהבדיקות עברו.

---

## עדכון לוג  
### prompt_update_log.mini.md  
מוסיף רשומה חדשה ל־IMPLEMENTATION_LOG לפי תבנית קבועה מראש.

---

## הכנת קומיט  
### prompt_prepare_commit.mini.md  
בונה הודעת קומיט לפי הרשומה האחרונה בלוג.  
מחליט אילו קבצים ייכנסו לסטייג'.  
מפעיל את הסקריפט STAGE_AND_COMMIT.sh.

---

## הכנת בקשת משיכה  
### prompt_prepare_pull_request.mini.md  
בונה PR מלא־שיטה מהלוג ומהמסמכים.  
מפעיל את הסקריפט OPEN_PULL_REQUEST.sh.

---

## טיפול בשינוי אנושי  
### prompt_human_edit_mode.mini.md  
עוצר את המחזור ומציג לאדם את השינויים שבוצעו ידנית.

### prompt_analyze_human_changes.mini.md  
מציג ניתוח מלא של השינוי האנושי  
ומחכה להחלטה אנושית לפני המשך.

---

## orchestration  
### prompt_main_orchestration.mini.md  
מנהל את כל המחזור מתחילתו ועד סופו.  
מפעיל את כל הפרומפטים לפי סדר קשיח.  
עוצר בכל מצב לא תקין.  


</div>