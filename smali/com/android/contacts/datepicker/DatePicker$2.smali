.class Lcom/android/contacts/datepicker/DatePicker$2;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    add-int/lit8 v1, p3, -0x1

    # setter for: Lcom/android/contacts/datepicker/DatePicker;->mMonth:I
    invoke-static {v0, v1}, Lcom/android/contacts/datepicker/DatePicker;->access$202(Lcom/android/contacts/datepicker/DatePicker;I)I

    .line 154
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$300(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 155
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$100(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 156
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    # invokes: Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$400(Lcom/android/contacts/datepicker/DatePicker;)V

    .line 157
    return-void
.end method
