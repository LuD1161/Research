.class public Li/e$g$a;
.super LS/M;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/e$g;->c(Ln/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li/e$g;


# direct methods
.method public constructor <init>(Li/e$g;)V
    .locals 0

    iput-object p1, p0, Li/e$g$a;->a:Li/e$g;

    invoke-direct {p0}, LS/M;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li/e$g$a;->a:Li/e$g;

    iget-object p1, p1, Li/e$g;->b:Li/e;

    iget-object p1, p1, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Li/e$g$a;->a:Li/e$g;

    iget-object p1, p1, Li/e$g;->b:Li/e;

    iget-object v0, p1, Li/e;->s:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Li/e$g$a;->a:Li/e$g;

    iget-object p1, p1, Li/e$g;->b:Li/e;

    iget-object p1, p1, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, LS/C;->d0(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Li/e$g$a;->a:Li/e$g;

    iget-object p1, p1, Li/e$g;->b:Li/e;

    iget-object p1, p1, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Li/e$g$a;->a:Li/e$g;

    iget-object p1, p1, Li/e$g;->b:Li/e;

    iget-object p1, p1, Li/e;->u:LS/K;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LS/K;->h(LS/L;)LS/K;

    iget-object p1, p0, Li/e$g$a;->a:Li/e$g;

    iget-object p1, p1, Li/e$g;->b:Li/e;

    iput-object v0, p1, Li/e;->u:LS/K;

    iget-object p1, p1, Li/e;->x:Landroid/view/ViewGroup;

    invoke-static {p1}, LS/C;->d0(Landroid/view/View;)V

    return-void
.end method
