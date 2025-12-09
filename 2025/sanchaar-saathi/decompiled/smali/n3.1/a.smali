.class public abstract Ln3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/e;
.implements Ln3/e;
.implements Ljava/io/Serializable;


# instance fields
.field public final e:Ll3/e;


# direct methods
.method public constructor <init>(Ll3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/a;->e:Ll3/e;

    return-void
.end method


# virtual methods
.method public j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 0

    const-string p1, "completion"

    invoke-static {p2, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()Ln3/e;
    .locals 2

    iget-object v0, p0, Ln3/a;->e:Ll3/e;

    instance-of v1, v0, Ln3/e;

    if-eqz v1, :cond_0

    check-cast v0, Ln3/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final m()Ll3/e;
    .locals 1

    iget-object v0, p0, Ln3/a;->e:Ll3/e;

    return-object v0
.end method

.method public n()Ljava/lang/StackTraceElement;
    .locals 1

    invoke-static {p0}, Ln3/g;->d(Ln3/a;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public abstract o(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public final q(Ljava/lang/Object;)V
    .locals 3

    move-object v0, p0

    :goto_0
    invoke-static {v0}, Ln3/h;->b(Ll3/e;)V

    check-cast v0, Ln3/a;

    iget-object v1, v0, Ln3/a;->e:Ll3/e;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ln3/a;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v2, Lh3/h;->e:Lh3/h$a;

    invoke-static {p1}, Lh3/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-virtual {v0}, Ln3/a;->p()V

    instance-of v0, v1, Ln3/a;

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Ll3/e;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continuation at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ln3/a;->n()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
