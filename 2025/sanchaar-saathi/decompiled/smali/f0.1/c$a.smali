.class public final Lf0/c$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/c;->c(Landroid/content/Context;LA3/h;)Lc0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lf0/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf0/c;)V
    .locals 0

    iput-object p1, p0, Lf0/c$a;->f:Landroid/content/Context;

    iput-object p2, p0, Lf0/c$a;->g:Lf0/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lf0/c$a;->f:Landroid/content/Context;

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lf0/c$a;->g:Lf0/c;

    invoke-static {v1}, Lf0/c;->b(Lf0/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf0/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lf0/c$a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
