.class public final Lz0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/d$c;,
        Lz0/d$a;,
        Lz0/d$b;
    }
.end annotation


# static fields
.field public static final l:Lz0/d$a;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Ljava/lang/String;

.field public final g:Ly0/h$a;

.field public final h:Z

.field public final i:Z

.field public final j:Lh3/d;

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz0/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz0/d$a;-><init>(Lv3/g;)V

    sput-object v0, Lz0/d;->l:Lz0/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ly0/h$a;ZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/d;->e:Landroid/content/Context;

    iput-object p2, p0, Lz0/d;->f:Ljava/lang/String;

    iput-object p3, p0, Lz0/d;->g:Ly0/h$a;

    iput-boolean p4, p0, Lz0/d;->h:Z

    iput-boolean p5, p0, Lz0/d;->i:Z

    new-instance p1, Lz0/d$d;

    invoke-direct {p1, p0}, Lz0/d$d;-><init>(Lz0/d;)V

    invoke-static {p1}, Lh3/e;->a(Lu3/a;)Lh3/d;

    move-result-object p1

    iput-object p1, p0, Lz0/d;->j:Lh3/d;

    return-void
.end method

.method public static final synthetic b(Lz0/d;)Z
    .locals 0

    iget-boolean p0, p0, Lz0/d;->i:Z

    return p0
.end method

.method public static final synthetic c(Lz0/d;)Ly0/h$a;
    .locals 0

    iget-object p0, p0, Lz0/d;->g:Ly0/h$a;

    return-object p0
.end method

.method public static final synthetic d(Lz0/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lz0/d;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic e(Lz0/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz0/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic f(Lz0/d;)Z
    .locals 0

    iget-boolean p0, p0, Lz0/d;->h:Z

    return p0
.end method

.method public static final synthetic g(Lz0/d;)Z
    .locals 0

    iget-boolean p0, p0, Lz0/d;->k:Z

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lz0/d;->j:Lh3/d;

    invoke-interface {v0}, Lh3/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz0/d;->h()Lz0/d$c;

    move-result-object v0

    invoke-virtual {v0}, Lz0/d$c;->close()V

    :cond_0
    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz0/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getWritableDatabase()Ly0/g;
    .locals 2

    invoke-virtual {p0}, Lz0/d;->h()Lz0/d$c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lz0/d$c;->d(Z)Ly0/g;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lz0/d$c;
    .locals 1

    iget-object v0, p0, Lz0/d;->j:Lh3/d;

    invoke-interface {v0}, Lh3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz0/d$c;

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lz0/d;->j:Lh3/d;

    invoke-interface {v0}, Lh3/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz0/d;->h()Lz0/d$c;

    move-result-object v0

    invoke-static {v0, p1}, Ly0/b;->d(Landroid/database/sqlite/SQLiteOpenHelper;Z)V

    :cond_0
    iput-boolean p1, p0, Lz0/d;->k:Z

    return-void
.end method
