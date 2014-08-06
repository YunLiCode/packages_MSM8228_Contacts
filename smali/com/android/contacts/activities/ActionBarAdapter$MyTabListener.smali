.class Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTabListener"
.end annotation


# instance fields
.field public mIgnoreTabSelected:Z

.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;Lcom/android/contacts/activities/ActionBarAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/ActionBarAdapter;
    .param p2, "x1"    # Lcom/android/contacts/activities/ActionBarAdapter$1;

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;-><init>(Lcom/android/contacts/activities/ActionBarAdapter;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 295
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 299
    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->mIgnoreTabSelected:Z

    if-nez v1, :cond_0

    .line 300
    # getter for: Lcom/android/contacts/activities/ActionBarAdapter;->show4TabsPeople:Z
    invoke-static {}, Lcom/android/contacts/activities/ActionBarAdapter;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    .line 301
    .local v0, "position":I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$MyTabListener;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    .line 303
    .end local v0    # "position":I
    :cond_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 296
    return-void
.end method
