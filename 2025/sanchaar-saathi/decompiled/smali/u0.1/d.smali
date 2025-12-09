.class public final Lu0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/h;
.implements Lu0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/d$a;,
        Lu0/d$c;,
        Lu0/d$b;
    }
.end annotation


# instance fields
.field public final e:Ly0/h;

.field public final f:Lu0/c;

.field public final g:Lu0/d$a;


# direct methods
.method public constructor <init>(Ly0/h;Lu0/c;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoCloser"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/d;->e:Ly0/h;

    iput-object p2, p0, Lu0/d;->f:Lu0/c;

    invoke-virtual {p0}, Lu0/d;->b()Ly0/h;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu0/c;->k(Ly0/h;)V

    new-instance p1, Lu0/d$a;

    invoke-direct {p1, p2}, Lu0/d$a;-><init>(Lu0/c;)V

    iput-object p1, p0, Lu0/d;->g:Lu0/d$a;

    return-void
.end method


# virtual methods
.method public b()Ly0/h;
    .locals 1

    iget-object v0, p0, Lu0/d;->e:Ly0/h;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lu0/d;->g:Lu0/d$a;

    invoke-virtual {v0}, Lu0/d$a;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu0/d;->e:Ly0/h;

    invoke-interface {v0}, Ly0/h;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Ly0/g;
    .locals 1

    iget-object v0, p0, Lu0/d;->g:Lu0/d$a;

    invoke-virtual {v0}, Lu0/d$a;->b()V

    iget-object v0, p0, Lu0/d;->g:Lu0/d$a;

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lu0/d;->e:Ly0/h;

    invoke-interface {v0, p1}, Ly0/h;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
