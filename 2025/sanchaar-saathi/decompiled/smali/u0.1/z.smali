.class public final Lu0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/h$c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/io/File;

.field public final c:Ljava/util/concurrent/Callable;

.field public final d:Ly0/h$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ly0/h$c;)V
    .locals 1

    const-string v0, "mDelegate"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/z;->a:Ljava/lang/String;

    iput-object p2, p0, Lu0/z;->b:Ljava/io/File;

    iput-object p3, p0, Lu0/z;->c:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lu0/z;->d:Ly0/h$c;

    return-void
.end method


# virtual methods
.method public create(Ly0/h$b;)Ly0/h;
    .locals 8

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lu0/y;

    iget-object v2, p1, Ly0/h$b;->a:Landroid/content/Context;

    iget-object v3, p0, Lu0/z;->a:Ljava/lang/String;

    iget-object v4, p0, Lu0/z;->b:Ljava/io/File;

    iget-object v5, p0, Lu0/z;->c:Ljava/util/concurrent/Callable;

    iget-object v1, p1, Ly0/h$b;->c:Ly0/h$a;

    iget v6, v1, Ly0/h$a;->a:I

    iget-object v1, p0, Lu0/z;->d:Ly0/h$c;

    invoke-interface {v1, p1}, Ly0/h$c;->create(Ly0/h$b;)Ly0/h;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lu0/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;ILy0/h;)V

    return-object v0
.end method
