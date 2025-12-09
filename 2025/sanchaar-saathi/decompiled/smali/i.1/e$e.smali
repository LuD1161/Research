.class public Li/e$e;
.super LS/M;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/e;->G0(Ln/b$a;)Ln/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li/e;


# direct methods
.method public constructor <init>(Li/e;)V
    .locals 0

    iput-object p1, p0, Li/e$e;->a:Li/e;

    invoke-direct {p0}, LS/M;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li/e$e;->a:Li/e;

    iget-object p1, p1, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Li/e$e;->a:Li/e;

    iget-object p1, p1, Li/e;->u:LS/K;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LS/K;->h(LS/L;)LS/K;

    iget-object p1, p0, Li/e$e;->a:Li/e;

    iput-object v0, p1, Li/e;->u:LS/K;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li/e$e;->a:Li/e;

    iget-object p1, p1, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Li/e$e;->a:Li/e;

    iget-object p1, p1, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Li/e$e;->a:Li/e;

    iget-object p1, p1, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Li/e$e;->a:Li/e;

    iget-object p1, p1, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, LS/C;->d0(Landroid/view/View;)V

    :cond_0
    return-void
.end method
