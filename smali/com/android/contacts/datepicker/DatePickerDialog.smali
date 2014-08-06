.class public Lcom/android/contacts/datepicker/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field public static NO_YEAR:I


# instance fields
.field private final mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private final mTitleDateFormat:Ljava/text/DateFormat;

.field private final mTitleNoYearDateFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/android/contacts/datepicker/DatePicker;->NO_YEAR:I

    sput v0, Lcom/android/contacts/datepicker/DatePickerDialog;->NO_YEAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "yearOptional"    # Z

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 154
    iput-object p3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    .line 155
    iput p4, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    .line 156
    iput p5, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    .line 157
    iput p6, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    .line 159
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    .line 160
    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/DateUtils;->getLocalizedDateFormatWithoutYear(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleNoYearDateFormat:Ljava/text/DateFormat;

    .line 161
    iget v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    iget v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle(III)V

    .line 163
    const/4 v0, -0x1

    const v2, 0x1040472

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p0}, Lcom/android/contacts/datepicker/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 165
    const/4 v2, -0x2

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/contacts/datepicker/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 170
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04002f

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 171
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/android/contacts/datepicker/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 172
    const v0, 0x7f0b0090

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/datepicker/DatePicker;

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    .line 173
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    iget v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    move v4, p7

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "yearOptional"    # Z

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const v2, 0x103030a

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    .line 115
    return-void

    .line 111
    :cond_0
    const v2, 0x10302f6

    goto :goto_0
.end method

.method private updateTitle(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 212
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 214
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 215
    sget v2, Lcom/android/contacts/datepicker/DatePickerDialog;->NO_YEAR:I

    if-ne p1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleNoYearDateFormat:Ljava/text/DateFormat;

    .line 217
    .local v1, "dateFormat":Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/datepicker/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 218
    return-void

    .line 215
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->clearFocus()V

    .line 193
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v3}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v4}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/android/contacts/datepicker/DatePicker;III)V

    .line 196
    :cond_0
    return-void
.end method

.method public onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V
    .locals 0
    .param p1, "view"    # Lcom/android/contacts/datepicker/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 200
    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle(III)V

    .line 201
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 233
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 234
    .local v1, "year":I
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 235
    .local v2, "month":I
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 236
    .local v3, "day":I
    const-string v0, "year_optional"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 237
    .local v4, "yearOptional":Z
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    .line 238
    invoke-direct {p0, v1, v2, v3}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle(III)V

    .line 239
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 223
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v1, "month"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v1, "day"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v1, "year_optional"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->isYearOptional()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    return-object v0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 184
    const v1, 0x1020265

    invoke-virtual {p0, v1}, Lcom/android/contacts/datepicker/DatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 186
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 187
    return-void
.end method
