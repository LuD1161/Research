.class public abstract Ln3/d;
.super Ln3/a;
.source "SourceFile"


# instance fields
.field public final f:Ll3/i;

.field public transient g:Ll3/e;


# direct methods
.method public constructor <init>(Ll3/e;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ll3/e;->a()Ll3/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Ln3/d;-><init>(Ll3/e;Ll3/i;)V

    return-void
.end method

.method public constructor <init>(Ll3/e;Ll3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/a;-><init>(Ll3/e;)V

    .line 2
    iput-object p2, p0, Ln3/d;->f:Ll3/i;

    return-void
.end method


# virtual methods
.method public a()Ll3/i;
    .locals 1

    iget-object v0, p0, Ln3/d;->f:Ll3/i;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Ln3/d;->g:Ll3/e;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Ln3/d;->a()Ll3/i;

    move-result-object v1

    sget-object v2, Ll3/f;->d:Ll3/f$b;

    invoke-interface {v1, v2}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v1

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    check-cast v1, Ll3/f;

    invoke-interface {v1, v0}, Ll3/f;->e(Ll3/e;)V

    :cond_0
    sget-object v0, Ln3/c;->e:Ln3/c;

    iput-object v0, p0, Ln3/d;->g:Ll3/e;

    return-void
.end method

.method public final r()Ll3/e;
    .locals 2

    iget-object v0, p0, Ln3/d;->g:Ll3/e;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ln3/d;->a()Ll3/i;

    move-result-object v0

    sget-object v1, Ll3/f;->d:Ll3/f$b;

    invoke-interface {v0, v1}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v0

    check-cast v0, Ll3/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ll3/f;->J(Ll3/e;)Ll3/e;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iput-object v0, p0, Ln3/d;->g:Ll3/e;

    :cond_2
    return-object v0
.end method
