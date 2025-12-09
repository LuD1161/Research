.class public final Lz0/d$d;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz0/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ly0/h$a;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lz0/d;


# direct methods
.method public constructor <init>(Lz0/d;)V
    .locals 0

    iput-object p1, p0, Lz0/d$d;->f:Lz0/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lz0/d$c;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lz0/d$d;->f:Lz0/d;

    invoke-static {v1}, Lz0/d;->e(Lz0/d;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lz0/d$d;->f:Lz0/d;

    invoke-static {v1}, Lz0/d;->f(Lz0/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lz0/d$d;->f:Lz0/d;

    invoke-static {v3}, Lz0/d;->d(Lz0/d;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ly0/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    iget-object v4, v0, Lz0/d$d;->f:Lz0/d;

    invoke-static {v4}, Lz0/d;->e(Lz0/d;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lz0/d$c;

    iget-object v4, v0, Lz0/d$d;->f:Lz0/d;

    invoke-static {v4}, Lz0/d;->d(Lz0/d;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lz0/d$b;

    invoke-direct {v8, v2}, Lz0/d$b;-><init>(Lz0/c;)V

    iget-object v1, v0, Lz0/d$d;->f:Lz0/d;

    invoke-static {v1}, Lz0/d;->c(Lz0/d;)Ly0/h$a;

    move-result-object v9

    iget-object v1, v0, Lz0/d$d;->f:Lz0/d;

    invoke-static {v1}, Lz0/d;->b(Lz0/d;)Z

    move-result v10

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lz0/d$c;-><init>(Landroid/content/Context;Ljava/lang/String;Lz0/d$b;Ly0/h$a;Z)V

    goto :goto_0

    :cond_0
    new-instance v3, Lz0/d$c;

    iget-object v1, v0, Lz0/d$d;->f:Lz0/d;

    invoke-static {v1}, Lz0/d;->d(Lz0/d;)Landroid/content/Context;

    move-result-object v12

    iget-object v1, v0, Lz0/d$d;->f:Lz0/d;

    invoke-static {v1}, Lz0/d;->e(Lz0/d;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lz0/d$b;

    invoke-direct {v14, v2}, Lz0/d$b;-><init>(Lz0/c;)V

    iget-object v1, v0, Lz0/d$d;->f:Lz0/d;

    invoke-static {v1}, Lz0/d;->c(Lz0/d;)Ly0/h$a;

    move-result-object v15

    iget-object v1, v0, Lz0/d$d;->f:Lz0/d;

    invoke-static {v1}, Lz0/d;->b(Lz0/d;)Z

    move-result v16

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Lz0/d$c;-><init>(Landroid/content/Context;Ljava/lang/String;Lz0/d$b;Ly0/h$a;Z)V

    :goto_0
    iget-object v1, v0, Lz0/d$d;->f:Lz0/d;

    invoke-static {v1}, Lz0/d;->g(Lz0/d;)Z

    move-result v1

    invoke-static {v3, v1}, Ly0/b;->d(Landroid/database/sqlite/SQLiteOpenHelper;Z)V

    return-object v3
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz0/d$d;->a()Lz0/d$c;

    move-result-object v0

    return-object v0
.end method
