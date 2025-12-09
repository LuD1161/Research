.class public final LR0/F;
.super Lv0/b;
.source "SourceFile"


# instance fields
.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x9

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lv0/b;-><init>(II)V

    iput-object p1, p0, LR0/F;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ly0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    invoke-interface {p1, v0}, Ly0/g;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, LR0/F;->c:Landroid/content/Context;

    invoke-static {v0, p1}, La1/q;->c(Landroid/content/Context;Ly0/g;)V

    iget-object v0, p0, LR0/F;->c:Landroid/content/Context;

    invoke-static {v0, p1}, La1/l;->c(Landroid/content/Context;Ly0/g;)V

    return-void
.end method
