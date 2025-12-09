.class Lnet/sqlcipher/database/SupportHelper$1;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sqlcipher/database/SupportHelper;-><init>(Ly0/h$b;[BLnet/sqlcipher/database/SQLiteDatabaseHook;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sqlcipher/database/SupportHelper;

.field final synthetic val$configuration:Ly0/h$b;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/database/SupportHelper;Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Ly0/h$b;)V
    .locals 6

    iput-object p1, p0, Lnet/sqlcipher/database/SupportHelper$1;->this$0:Lnet/sqlcipher/database/SupportHelper;

    iput-object p7, p0, Lnet/sqlcipher/database/SupportHelper$1;->val$configuration:Ly0/h$b;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)V

    return-void
.end method


# virtual methods
.method public onConfigure(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper$1;->val$configuration:Ly0/h$b;

    iget-object v0, v0, Ly0/h$b;->c:Ly0/h$a;

    invoke-virtual {v0, p1}, Ly0/h$a;->b(Ly0/g;)V

    return-void
.end method

.method public onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper$1;->val$configuration:Ly0/h$b;

    iget-object v0, v0, Ly0/h$b;->c:Ly0/h$a;

    invoke-virtual {v0, p1}, Ly0/h$a;->d(Ly0/g;)V

    return-void
.end method

.method public onDowngrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper$1;->val$configuration:Ly0/h$b;

    iget-object v0, v0, Ly0/h$b;->c:Ly0/h$a;

    invoke-virtual {v0, p1, p2, p3}, Ly0/h$a;->e(Ly0/g;II)V

    return-void
.end method

.method public onOpen(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper$1;->val$configuration:Ly0/h$b;

    iget-object v0, v0, Ly0/h$b;->c:Ly0/h$a;

    invoke-virtual {v0, p1}, Ly0/h$a;->f(Ly0/g;)V

    return-void
.end method

.method public onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper$1;->val$configuration:Ly0/h$b;

    iget-object v0, v0, Ly0/h$b;->c:Ly0/h$a;

    invoke-virtual {v0, p1, p2, p3}, Ly0/h$a;->g(Ly0/g;II)V

    return-void
.end method
