.class public LI3/B;
.super LD3/a;
.source "SourceFile"

# interfaces
.implements Ln3/e;


# instance fields
.field public final h:Ll3/e;


# direct methods
.method public constructor <init>(Ll3/i;Ll3/e;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, LD3/a;-><init>(Ll3/i;ZZ)V

    iput-object p2, p0, LI3/B;->h:Ll3/e;

    return-void
.end method


# virtual methods
.method public P(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LI3/B;->h:Ll3/e;

    invoke-static {v0}, Lm3/b;->b(Ll3/e;)Ll3/e;

    move-result-object v0

    iget-object v1, p0, LI3/B;->h:Ll3/e;

    invoke-static {p1, v1}, LD3/D;->a(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, LI3/k;->c(Ll3/e;Ljava/lang/Object;Lu3/l;ILjava/lang/Object;)V

    return-void
.end method

.method public P0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LI3/B;->h:Ll3/e;

    invoke-static {p1, v0}, LD3/D;->a(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ll3/e;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final l()Ln3/e;
    .locals 2

    iget-object v0, p0, LI3/B;->h:Ll3/e;

    instance-of v1, v0, Ln3/e;

    if-eqz v1, :cond_0

    check-cast v0, Ln3/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final p0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
