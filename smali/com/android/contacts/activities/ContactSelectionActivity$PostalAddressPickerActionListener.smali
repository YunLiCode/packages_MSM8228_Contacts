.class final Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnPostalAddressPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostalAddressPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/ContactSelectionActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/ContactSelectionActivity$1;

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onPickPostalAddressAction(Landroid/net/Uri;)V
    .locals 1
    .param p1, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$PostalAddressPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/net/Uri;)V

    .line 520
    return-void
.end method
