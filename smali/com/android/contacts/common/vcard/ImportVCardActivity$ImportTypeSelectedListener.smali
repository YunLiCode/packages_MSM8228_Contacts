.class Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTypeSelectedListener"
.end annotation


# instance fields
.field private mCurrentIndex:I

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p2, "x1"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$1;

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 559
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 560
    iget v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->mCurrentIndex:I

    packed-switch v0, :pswitch_data_0

    .line 568
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showDialog(I)V

    .line 576
    :goto_0
    return-void

    .line 562
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$800(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)V

    goto :goto_0

    .line 565
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showDialog(I)V

    goto :goto_0

    .line 571
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_0

    .line 574
    :cond_1
    iput p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;->mCurrentIndex:I

    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
