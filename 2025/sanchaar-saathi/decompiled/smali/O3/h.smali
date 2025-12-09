.class public abstract LO3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LO3/h$a;
    }
.end annotation


# static fields
.field public static final a:LO3/h$a;

.field public static final b:LO3/h;

.field public static final c:LO3/r;

.field public static final d:LO3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LO3/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LO3/h$a;-><init>(Lv3/g;)V

    sput-object v0, LO3/h;->a:LO3/h$a;

    :try_start_0
    const-string v0, "java.nio.file.Files"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, LO3/n;

    invoke-direct {v0}, LO3/n;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, LO3/m;

    invoke-direct {v0}, LO3/m;-><init>()V

    :goto_0
    sput-object v0, LO3/h;->b:LO3/h;

    sget-object v0, LO3/r;->f:LO3/r$a;

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getProperty(\"java.io.tmpdir\")"

    invoke-static {v2, v3}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3, v1}, LO3/r$a;->e(LO3/r$a;Ljava/lang/String;ZILjava/lang/Object;)LO3/r;

    move-result-object v0

    sput-object v0, LO3/h;->c:LO3/r;

    new-instance v0, LP3/g;

    const-class v1, LP3/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "ResourceFileSystem::class.java.classLoader"

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v4}, LP3/g;-><init>(Ljava/lang/ClassLoader;Z)V

    sput-object v0, LO3/h;->d:LO3/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(LO3/r;LO3/r;)V
.end method

.method public final b(LO3/r;Z)V
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, LP3/b;->a(LO3/h;LO3/r;Z)V

    return-void
.end method

.method public final c(LO3/r;)V
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LO3/h;->d(LO3/r;Z)V

    return-void
.end method

.method public abstract d(LO3/r;Z)V
.end method

.method public final e(LO3/r;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LO3/h;->f(LO3/r;Z)V

    return-void
.end method

.method public abstract f(LO3/r;Z)V
.end method

.method public final g(LO3/r;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LP3/b;->b(LO3/h;LO3/r;)Z

    move-result p1

    return p1
.end method

.method public abstract h(LO3/r;)LO3/g;
.end method

.method public abstract i(LO3/r;)LO3/f;
.end method

.method public final j(LO3/r;)LO3/f;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, LO3/h;->k(LO3/r;ZZ)LO3/f;

    move-result-object p1

    return-object p1
.end method

.method public abstract k(LO3/r;ZZ)LO3/f;
.end method

.method public abstract l(LO3/r;)LO3/y;
.end method
