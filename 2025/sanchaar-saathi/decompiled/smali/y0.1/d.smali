.class public final Ly0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly0/d;

    invoke-direct {v0}, Ly0/d;-><init>()V

    sput-object v0, Ly0/d;->a:Ly0/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v0, "context.noBackupFilesDir"

    invoke-static {p0, v0}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
