.class public final Ly0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly0/e;

    invoke-direct {v0}, Ly0/e;-><init>()V

    sput-object v0, Ly0/e;->a:Ly0/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/database/Cursor;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method
