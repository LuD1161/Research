.class public final Le0/d$c;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le0/d;-><init>(LO3/h;Le0/c;Lu3/p;Lu3/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Le0/d;


# direct methods
.method public constructor <init>(Le0/d;)V
    .locals 0

    iput-object p1, p0, Le0/d$c;->f:Le0/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()LO3/r;
    .locals 4

    iget-object v0, p0, Le0/d$c;->f:Le0/d;

    invoke-static {v0}, Le0/d;->e(Le0/d;)Lu3/a;

    move-result-object v0

    invoke-interface {v0}, Lu3/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO3/r;

    invoke-virtual {v0}, LO3/r;->m()Z

    move-result v1

    iget-object v2, p0, Le0/d$c;->f:Le0/d;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LO3/r;->p()LO3/r;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OkioStorage requires absolute paths, but did not get an absolute path from producePath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Le0/d;->e(Le0/d;)Lu3/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", instead got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Le0/d$c;->a()LO3/r;

    move-result-object v0

    return-object v0
.end method
