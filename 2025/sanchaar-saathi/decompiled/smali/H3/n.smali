.class public final LH3/n;
.super Ln3/d;
.source "SourceFile"

# interfaces
.implements LG3/e;
.implements Ln3/e;


# instance fields
.field public final h:LG3/e;

.field public final i:Ll3/i;

.field public final j:I

.field public k:Ll3/i;

.field public l:Ll3/e;


# direct methods
.method public constructor <init>(LG3/e;Ll3/i;)V
    .locals 2

    sget-object v0, LH3/l;->e:LH3/l;

    sget-object v1, Ll3/j;->e:Ll3/j;

    invoke-direct {p0, v0, v1}, Ln3/d;-><init>(Ll3/e;Ll3/i;)V

    iput-object p1, p0, LH3/n;->h:LG3/e;

    iput-object p2, p0, LH3/n;->i:Ll3/i;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, LH3/n$a;->f:LH3/n$a;

    invoke-interface {p2, p1, v0}, Ll3/i;->H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, LH3/n;->j:I

    return-void
.end method


# virtual methods
.method public a()Ll3/i;
    .locals 1

    iget-object v0, p0, LH3/n;->k:Ll3/i;

    if-nez v0, :cond_0

    sget-object v0, Ll3/j;->e:Ll3/j;

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p2, p1}, LH3/n;->t(Ll3/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Ln3/h;->c(Ll3/e;)V

    :cond_0
    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :catchall_0
    move-exception p1

    new-instance v0, LH3/i;

    invoke-interface {p2}, Ll3/e;->a()Ll3/i;

    move-result-object p2

    invoke-direct {v0, p1, p2}, LH3/i;-><init>(Ljava/lang/Throwable;Ll3/i;)V

    iput-object v0, p0, LH3/n;->k:Ll3/i;

    throw p1
.end method

.method public l()Ln3/e;
    .locals 2

    iget-object v0, p0, LH3/n;->l:Ll3/e;

    instance-of v1, v0, Ln3/e;

    if-eqz v1, :cond_0

    check-cast v0, Ln3/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lh3/h;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LH3/i;

    invoke-virtual {p0}, LH3/n;->a()Ll3/i;

    move-result-object v2

    invoke-direct {v1, v0, v2}, LH3/i;-><init>(Ljava/lang/Throwable;Ll3/i;)V

    iput-object v1, p0, LH3/n;->k:Ll3/i;

    :cond_0
    iget-object v0, p0, LH3/n;->l:Ll3/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ll3/e;->q(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p()V
    .locals 0

    invoke-super {p0}, Ln3/d;->p()V

    return-void
.end method

.method public final s(Ll3/i;Ll3/i;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, LH3/i;

    if-eqz v0, :cond_0

    check-cast p2, LH3/i;

    invoke-virtual {p0, p2, p3}, LH3/n;->w(LH3/i;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, LH3/p;->a(LH3/n;Ll3/i;)V

    return-void
.end method

.method public final t(Ll3/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Ll3/e;->a()Ll3/i;

    move-result-object v0

    invoke-static {v0}, LD3/t0;->e(Ll3/i;)V

    iget-object v1, p0, LH3/n;->k:Ll3/i;

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0, v1, p2}, LH3/n;->s(Ll3/i;Ll3/i;Ljava/lang/Object;)V

    iput-object v0, p0, LH3/n;->k:Ll3/i;

    :cond_0
    iput-object p1, p0, LH3/n;->l:Ll3/e;

    invoke-static {}, LH3/o;->a()Lu3/q;

    move-result-object p1

    iget-object v0, p0, LH3/n;->h:LG3/e;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>"

    invoke-static {p0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, p2, p0}, Lu3/q;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    iput-object p2, p0, LH3/n;->l:Ll3/e;

    :cond_1
    return-object p1
.end method

.method public final w(LH3/i;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, LH3/i;->e:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but then emission attempt of value \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LC3/h;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
