.class public final Li0/f$g$b$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li0/f$g$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Li0/f$g;

.field public final synthetic g:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Li0/f$g;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Li0/f$g$b$a;->f:Li0/f$g;

    iput-object p2, p0, Li0/f$g$b$a;->g:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Li0/f$g;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1}, Li0/f$g$b$a;->e(Li0/f$g;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final e(Li0/f$g;Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$container"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Li0/f$g;->w()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li0/f$h;

    invoke-virtual {v0}, Li0/f$f;->a()Li0/Z$d;

    move-result-object v0

    invoke-virtual {v0}, Li0/Z$d;->i()Li0/p;

    move-result-object v1

    invoke-virtual {v1}, Li0/p;->V()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Li0/Z$d;->h()Li0/Z$d$b;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Li0/Z$d$b;->f(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    const-string v1, "Animating to start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Li0/f$g$b$a;->f:Li0/f$g;

    invoke-virtual {v0}, Li0/f$g;->v()Li0/U;

    move-result-object v0

    iget-object v1, p0, Li0/f$g$b$a;->f:Li0/f$g;

    invoke-virtual {v1}, Li0/f$g;->s()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Li0/f$g$b$a;->f:Li0/f$g;

    iget-object v3, p0, Li0/f$g$b$a;->g:Landroid/view/ViewGroup;

    new-instance v4, Li0/m;

    invoke-direct {v4, v2, v3}, Li0/m;-><init>(Li0/f$g;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1, v4}, Li0/U;->d(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li0/f$g$b$a;->b()V

    sget-object v0, Lh3/n;->a:Lh3/n;

    return-object v0
.end method
