.class public Li0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li0/A;


# direct methods
.method public constructor <init>(Li0/A;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/y;->a:Li0/A;

    return-void
.end method

.method public static b(Li0/A;)Li0/y;
    .locals 2

    new-instance v0, Li0/y;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, LR/g;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li0/A;

    invoke-direct {v0, p0}, Li0/y;-><init>(Li0/A;)V

    return-object v0
.end method


# virtual methods
.method public a(Li0/p;)V
    .locals 2

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    iget-object v1, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0, v1, v1, p1}, Li0/I;->l(Li0/A;Li0/w;Li0/p;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    invoke-virtual {v0}, Li0/I;->x()V

    return-void
.end method

.method public d(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    invoke-virtual {v0, p1}, Li0/I;->A(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    invoke-virtual {v0}, Li0/I;->B()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    invoke-virtual {v0}, Li0/I;->D()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    invoke-virtual {v0}, Li0/I;->M()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    invoke-virtual {v0}, Li0/I;->Q()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    invoke-virtual {v0}, Li0/I;->R()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    invoke-virtual {v0}, Li0/I;->T()V

    return-void
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li0/I;->a0(Z)Z

    move-result v0

    return v0
.end method

.method public l()Li0/I;
    .locals 1

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    invoke-virtual {v0}, Li0/I;->X0()V

    return-void
.end method

.method public n(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Li0/y;->a:Li0/A;

    invoke-virtual {v0}, Li0/A;->q()Li0/I;

    move-result-object v0

    invoke-virtual {v0}, Li0/I;->w0()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
