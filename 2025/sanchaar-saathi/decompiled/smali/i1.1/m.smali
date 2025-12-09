.class public final Li1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/a;
.implements LU2/a;


# instance fields
.field public c:Li1/p;

.field public d:LY2/j;

.field public e:LU2/c;

.field public f:Li1/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Li1/m;->e:LU2/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Li1/m;->c:Li1/p;

    invoke-interface {v0, v1}, LU2/c;->f(LY2/l;)V

    iget-object v0, p0, Li1/m;->e:LU2/c;

    iget-object v1, p0, Li1/m;->c:Li1/p;

    invoke-interface {v0, v1}, LU2/c;->g(LY2/n;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Li1/m;->e:LU2/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Li1/m;->c:Li1/p;

    invoke-interface {v0, v1}, LU2/c;->a(LY2/l;)V

    iget-object v0, p0, Li1/m;->e:LU2/c;

    iget-object v1, p0, Li1/m;->c:Li1/p;

    invoke-interface {v0, v1}, LU2/c;->d(LY2/n;)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/content/Context;LY2/b;)V
    .locals 3

    new-instance v0, LY2/j;

    const-string v1, "flutter.baseflow.com/permissions/methods"

    invoke-direct {v0, p2, v1}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object v0, p0, Li1/m;->d:LY2/j;

    new-instance p2, Li1/l;

    new-instance v0, Li1/a;

    invoke-direct {v0}, Li1/a;-><init>()V

    iget-object v1, p0, Li1/m;->c:Li1/p;

    new-instance v2, Li1/w;

    invoke-direct {v2}, Li1/w;-><init>()V

    invoke-direct {p2, p1, v0, v1, v2}, Li1/l;-><init>(Landroid/content/Context;Li1/a;Li1/p;Li1/w;)V

    iput-object p2, p0, Li1/m;->f:Li1/l;

    iget-object p1, p0, Li1/m;->d:LY2/j;

    invoke-virtual {p1, p2}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Li1/m;->c:Li1/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Li1/p;->h(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Li1/m;->d:LY2/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LY2/j;->e(LY2/j$c;)V

    iput-object v1, p0, Li1/m;->d:LY2/j;

    iput-object v1, p0, Li1/m;->f:Li1/l;

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Li1/m;->c:Li1/p;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li1/p;->h(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onAttachedToActivity(LU2/c;)V
    .locals 1

    invoke-interface {p1}, LU2/c;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Li1/m;->d(Landroid/app/Activity;)V

    iput-object p1, p0, Li1/m;->e:LU2/c;

    invoke-virtual {p0}, Li1/m;->b()V

    return-void
.end method

.method public onAttachedToEngine(LT2/a$b;)V
    .locals 2

    new-instance v0, Li1/p;

    invoke-virtual {p1}, LT2/a$b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Li1/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Li1/m;->c:Li1/p;

    invoke-virtual {p1}, LT2/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Li1/m;->c(Landroid/content/Context;LY2/b;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    invoke-virtual {p0}, Li1/m;->f()V

    invoke-virtual {p0}, Li1/m;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Li1/m;->e:LU2/c;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    invoke-virtual {p0}, Li1/m;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(LT2/a$b;)V
    .locals 0

    invoke-virtual {p0}, Li1/m;->e()V

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(LU2/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Li1/m;->onAttachedToActivity(LU2/c;)V

    return-void
.end method
