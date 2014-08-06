.class public Lcom/android/contacts/list/LegacyPhoneNumberPickerFragment;
.super Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.source "LegacyPhoneNumberPickerFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/contacts/list/LegacyPhoneNumberPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/LegacyPhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/LegacyPhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "adapter":Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 48
    return-object v0
.end method

.method protected getPhoneUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/contacts/list/LegacyPhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    .line 41
    .local v0, "adapter":Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected getVisibleScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method protected setPhotoPosition(Lcom/android/contacts/common/list/ContactEntryListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/contacts/common/list/ContactEntryListAdapter;

    .prologue
    .line 54
    return-void
.end method

.method protected startPhoneNumberShortcutIntent(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
