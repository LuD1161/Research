.class public abstract Lr/b$e;
.super Lr/b$f;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# instance fields
.field public e:Lr/b$c;

.field public f:Lr/b$c;


# direct methods
.method public constructor <init>(Lr/b$c;Lr/b$c;)V
    .locals 0

    invoke-direct {p0}, Lr/b$f;-><init>()V

    iput-object p2, p0, Lr/b$e;->e:Lr/b$c;

    iput-object p1, p0, Lr/b$e;->f:Lr/b$c;

    return-void
.end method


# virtual methods
.method public c(Lr/b$c;)V
    .locals 1

    iget-object v0, p0, Lr/b$e;->e:Lr/b$c;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lr/b$e;->f:Lr/b$c;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lr/b$e;->f:Lr/b$c;

    iput-object v0, p0, Lr/b$e;->e:Lr/b$c;

    :cond_0
    iget-object v0, p0, Lr/b$e;->e:Lr/b$c;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, v0}, Lr/b$e;->d(Lr/b$c;)Lr/b$c;

    move-result-object v0

    iput-object v0, p0, Lr/b$e;->e:Lr/b$c;

    :cond_1
    iget-object v0, p0, Lr/b$e;->f:Lr/b$c;

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lr/b$e;->g()Lr/b$c;

    move-result-object p1

    iput-object p1, p0, Lr/b$e;->f:Lr/b$c;

    :cond_2
    return-void
.end method

.method public abstract d(Lr/b$c;)Lr/b$c;
.end method

.method public abstract e(Lr/b$c;)Lr/b$c;
.end method

.method public f()Ljava/util/Map$Entry;
    .locals 2

    iget-object v0, p0, Lr/b$e;->f:Lr/b$c;

    invoke-virtual {p0}, Lr/b$e;->g()Lr/b$c;

    move-result-object v1

    iput-object v1, p0, Lr/b$e;->f:Lr/b$c;

    return-object v0
.end method

.method public final g()Lr/b$c;
    .locals 2

    iget-object v0, p0, Lr/b$e;->f:Lr/b$c;

    iget-object v1, p0, Lr/b$e;->e:Lr/b$c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lr/b$e;->e(Lr/b$c;)Lr/b$c;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lr/b$e;->f:Lr/b$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr/b$e;->f()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
