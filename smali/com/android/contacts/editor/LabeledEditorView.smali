.class public abstract Lcom/android/contacts/editor/LabeledEditorView;
.super Landroid/widget/LinearLayout;
.source "LabeledEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;
    }
.end annotation


# static fields
.field public static final CUSTOM_SELECTION:Lcom/android/contacts/common/model/account/AccountType$EditType;


# instance fields
.field private mDelete:Landroid/widget/ImageView;

.field private mDeleteContainer:Landroid/view/View;

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

.field private mEntry:Lcom/android/contacts/common/model/ValuesDelta;

.field private mIsAttachedToWindow:Z

.field private mIsDeletable:Z

.field private mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field private mLabel:Landroid/widget/Spinner;

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field protected mMinLineItemHeight:I

.field private mReadOnly:Z

.field private mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mState:Lcom/android/contacts/model/RawContactDelta;

.field private mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

.field private mWasEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-direct {v0, v1, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    sput-object v0, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/common/model/account/AccountType$EditType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 98
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->init(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 98
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->init(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 98
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 123
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->init(Landroid/content/Context;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/LabeledEditorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/LabeledEditorView;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/LabeledEditorView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/RawContactDelta;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/LabeledEditorView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/LabeledEditorView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/LabeledEditorView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/LabeledEditorView;
    .param p1, "x1"    # Lcom/android/contacts/common/model/account/AccountType$EditType;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/LabeledEditorView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/LabeledEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/LabeledEditorView;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/LabeledEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/LabeledEditorView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createCustomDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 386
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f090133

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 388
    const v5, 0x7f04001b

    invoke-virtual {v3, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 389
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0b0021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 390
    .local v2, "editText":Landroid/widget/EditText;
    const/16 v5, 0x2001

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 391
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 392
    new-array v5, v6, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/4 v8, 0x6

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 394
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 397
    const v5, 0x104000a

    new-instance v6, Lcom/android/contacts/editor/LabeledEditorView$3;

    invoke-direct {v6, p0, v2}, Lcom/android/contacts/editor/LabeledEditorView$3;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 424
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 425
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/contacts/editor/LabeledEditorView$4;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$4;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 431
    new-instance v5, Lcom/android/contacts/editor/LabeledEditorView$5;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$5;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 445
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 448
    return-object v1
.end method

.method private getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 3

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    if-nez v1, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 495
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;

    if-nez v1, :cond_0

    .line 496
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View must be hosted in an Activity that implements DialogManager.DialogShowingViewActivity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :cond_0
    check-cast v0, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-interface {v0}, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;->getDialogManager()Lcom/android/contacts/util/DialogManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mMinLineItemHeight:I

    .line 129
    return-void
.end method

.method private rebuildLabel()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    .line 281
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 282
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->hasCustomSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    sget-object v2, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private setupDeleteButton()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 217
    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupLabelButton(Z)V
    .locals 3
    .param p1, "shouldExist"    # Z

    .prologue
    const/4 v1, 0x0

    .line 205
    if-eqz p1, :cond_1

    .line 206
    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 211
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 206
    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 507
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bundle must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_0
    const-string v1, "dialog_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 509
    .local v0, "dialogId":I
    packed-switch v0, :pswitch_data_0

    .line 513
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dialogId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->createCustomDialog()Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public deleteEditor()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    .line 187
    invoke-static {}, Lcom/android/contacts/editor/EditorAnimator;->getInstance()Lcom/android/contacts/editor/EditorAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/contacts/editor/EditorAnimator;->removeEditorView(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method protected getEntry()Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method protected getKind()Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    return-object v0
.end method

.method protected getType()Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    return-object v0
.end method

.method public getValues()Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method protected isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, p1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "dbValue":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 333
    .local v1, "dbValueNoNull":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    const-string v2, ""

    .line 334
    .local v2, "valueNoNull":Ljava/lang/String;
    :goto_1
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    return v3

    .end local v1    # "dbValueNoNull":Ljava/lang/String;
    .end local v2    # "valueNoNull":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 332
    goto :goto_0

    .restart local v1    # "dbValueNoNull":Ljava/lang/String;
    :cond_1
    move-object v2, p2

    .line 333
    goto :goto_1

    .line 334
    .restart local v2    # "valueNoNull":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    return v0
.end method

.method protected notifyEditorListener()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 307
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEmpty()Z

    move-result v0

    .line 312
    .local v0, "isEmpty":Z
    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    if-eq v1, v0, :cond_3

    .line 313
    if-eqz v0, :cond_4

    .line 314
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 317
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    .line 326
    :cond_3
    return-void

    .line 319
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v1, :cond_5

    .line 320
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    invoke-interface {v1, v3}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 322
    :cond_5
    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z

    .line 173
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z

    .line 179
    return-void
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->notifyEditorListener()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 135
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    .line 137
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setId(I)V

    .line 138
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 140
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    .line 141
    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/LabeledEditorView$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/LabeledEditorView$2;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void
.end method

.method protected onLabelRebuilt()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method protected onOptionalFieldVisibilityChange()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    .line 235
    :cond_0
    return-void
.end method

.method protected onTypeSelectionChange(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 465
    .local v0, "selected":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->hasCustomSelection()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/common/model/account/AccountType$EditType;

    if-ne v0, v1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget-object v1, v1, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 473
    :cond_2
    iget-object v1, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 474
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->showDialog(I)V

    goto :goto_0

    .line 477
    :cond_3
    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 478
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v2, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v3, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 479
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    .line 480
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->requestFocusForFirstEditField()V

    .line 481
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onLabelRebuilt()V

    goto :goto_0
.end method

.method protected rebuildValues()V
    .locals 6

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-boolean v4, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 339
    return-void
.end method

.method protected abstract requestFocusForFirstEditField()V
.end method

.method protected saveValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public setDeletable(Z)V
    .locals 0
    .param p1, "deletable"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    .line 245
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->setupDeleteButton()V

    .line 246
    return-void
.end method

.method public setDeleteButtonVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_0
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/Editor$EditorListener;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    .line 240
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 251
    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 253
    return-void

    :cond_0
    move v0, v2

    .line 251
    goto :goto_0

    :cond_1
    move v1, v2

    .line 252
    goto :goto_1
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 4
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    const/4 v1, 0x0

    .line 348
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 349
    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    .line 350
    iput-object p3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    .line 351
    iput-boolean p4, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    .line 352
    iput-object p5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 353
    const/4 v2, -0x1

    invoke-virtual {p5, p3, p1, p2, v2}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/LabeledEditorView;->setId(I)V

    .line 355
    invoke-virtual {p2}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->setVisibility(I)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->setVisibility(I)V

    .line 363
    invoke-static {p1}, Lcom/android/contacts/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    .line 364
    .local v0, "hasTypes":Z
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->setupLabelButton(Z)V

    .line 365
    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-nez p4, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-static {p2, p1}, Lcom/android/contacts/model/RawContactModifier;->getCurrentType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 368
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    goto :goto_0
.end method

.method showDialog(I)V
    .locals 2
    .param p1, "bundleDialogId"    # I

    .prologue
    .line 487
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 488
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "dialog_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 489
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getDialogManager()Lcom/android/contacts/util/DialogManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/contacts/util/DialogManager;->showDialogInView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 490
    return-void
.end method

.method updateCustomDialogOkButtonState(Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 452
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 453
    .local v0, "okButton":Landroid/widget/Button;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 454
    return-void

    .line 453
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
