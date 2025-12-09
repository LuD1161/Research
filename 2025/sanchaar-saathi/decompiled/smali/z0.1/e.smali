.class public final synthetic Lz0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final synthetic a:Ly0/h$a;

.field public final synthetic b:Lz0/d$b;


# direct methods
.method public synthetic constructor <init>(Ly0/h$a;Lz0/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/e;->a:Ly0/h$a;

    iput-object p2, p0, Lz0/e;->b:Lz0/d$b;

    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Lz0/e;->a:Ly0/h$a;

    iget-object v1, p0, Lz0/e;->b:Lz0/d$b;

    invoke-static {v0, v1, p1}, Lz0/d$c;->b(Ly0/h$a;Lz0/d$b;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
