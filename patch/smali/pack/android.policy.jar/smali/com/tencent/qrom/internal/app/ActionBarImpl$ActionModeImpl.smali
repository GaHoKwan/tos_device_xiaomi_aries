.class public Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;
.super Landroid/view/ActionMode;
.source "ActionBarImpl.java"

# interfaces
.implements Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 1302
    iput-object p2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 1303
    new-instance v0, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .line 1305
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->setCallback(Lcom/tencent/qrom/internal/view/menu/MenuBuilder$Callback;)V

    .line 1306
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1362
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1364
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1320
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    iget-object v0, v0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionMode:Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;

    if-eq v0, p0, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mWasHiddenBeforeMode:Z

    if-eqz v0, :cond_2

    .line 1330
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    iput-object p0, v0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 1331
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iput-object v1, v0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 1335
    :goto_1
    iput-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 1336
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->animateToMode(Z)V

    .line 1339
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->closeMode()V

    .line 1340
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionView:Lcom/tencent/qrom/internal/widget/ActionBarView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$200(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarView;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ActionBarView;->sendAccessibilityEvent(I)V

    .line 1342
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    iput-object v2, v0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mActionMode:Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;

    .line 1344
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    iget-boolean v0, v0, Lcom/tencent/qrom/internal/app/ActionBarImpl;->mWasHiddenBeforeMode:Z

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->hide()V

    goto :goto_0

    .line 1333
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 1310
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1353
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1357
    return-void

    .line 1355
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public onCloseMenu(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1418
    return-void
.end method

.method public onCloseSubMenu(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1434
    return-void
.end method

.method public onMenuItemSelected(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/tencent/qrom/internal/view/menu/MenuBuilder;

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 1442
    :goto_0
    return-void

    .line 1440
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->invalidate()V

    .line 1441
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v0, 0x1

    .line 1421
    iget-object v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v1, :cond_1

    .line 1422
    const/4 v0, 0x0

    .line 1430
    :cond_0
    :goto_0
    return v0

    .line 1425
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/qrom/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1429
    new-instance v1, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v2}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/tencent/qrom/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v1}, Lcom/tencent/qrom/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1371
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 1372
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$1100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1392
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1377
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$1100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 1387
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContextView:Lcom/tencent/qrom/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1382
    return-void
.end method