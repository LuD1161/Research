.class public Li/e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public a:Ln/b$a;

.field public final synthetic b:Li/e;


# direct methods
.method public constructor <init>(Li/e;Ln/b$a;)V
    .locals 0

    iput-object p1, p0, Li/e$g;->b:Li/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/e$g;->a:Ln/b$a;

    return-void
.end method


# virtual methods
.method public a(Ln/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Li/e$g;->a:Ln/b$a;

    invoke-interface {v0, p1, p2}, Ln/b$a;->a(Ln/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Ln/b;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Li/e$g;->a:Ln/b$a;

    invoke-interface {v0, p1, p2}, Ln/b$a;->b(Ln/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c(Ln/b;)V
    .locals 2

    iget-object v0, p0, Li/e$g;->a:Ln/b$a;

    invoke-interface {v0, p1}, Ln/b$a;->c(Ln/b;)V

    iget-object p1, p0, Li/e$g;->b:Li/e;

    iget-object v0, p1, Li/e;->s:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Li/e;->h:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Li/e$g;->b:Li/e;

    iget-object v0, v0, Li/e;->t:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Li/e$g;->b:Li/e;

    iget-object v0, p1, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Li/e;->V()V

    iget-object p1, p0, Li/e$g;->b:Li/e;

    iget-object v0, p1, Li/e;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, LS/C;->d(Landroid/view/View;)LS/K;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LS/K;->b(F)LS/K;

    move-result-object v0

    iput-object v0, p1, Li/e;->u:LS/K;

    iget-object p1, p0, Li/e$g;->b:Li/e;

    iget-object p1, p1, Li/e;->u:LS/K;

    new-instance v0, Li/e$g$a;

    invoke-direct {v0, p0}, Li/e$g$a;-><init>(Li/e$g;)V

    invoke-virtual {p1, v0}, LS/K;->h(LS/L;)LS/K;

    :cond_1
    iget-object p1, p0, Li/e$g;->b:Li/e;

    iget-object v0, p1, Li/e;->j:Li/c;

    if-eqz v0, :cond_2

    iget-object p1, p1, Li/e;->q:Ln/b;

    invoke-interface {v0, p1}, Li/c;->j(Ln/b;)V

    :cond_2
    iget-object p1, p0, Li/e$g;->b:Li/e;

    const/4 v0, 0x0

    iput-object v0, p1, Li/e;->q:Ln/b;

    iget-object p1, p1, Li/e;->x:Landroid/view/ViewGroup;

    invoke-static {p1}, LS/C;->d0(Landroid/view/View;)V

    return-void
.end method

.method public d(Ln/b;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Li/e$g;->b:Li/e;

    iget-object v0, v0, Li/e;->x:Landroid/view/ViewGroup;

    invoke-static {v0}, LS/C;->d0(Landroid/view/View;)V

    iget-object v0, p0, Li/e$g;->a:Ln/b$a;

    invoke-interface {v0, p1, p2}, Ln/b$a;->d(Ln/b;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
