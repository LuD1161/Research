.class public La1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ0/f;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Lc1/b;

.field public final b:LY0/a;

.field public final c:LZ0/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    invoke-static {v0}, LQ0/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La1/A;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;LY0/a;Lc1/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La1/A;->b:LY0/a;

    iput-object p3, p0, La1/A;->a:Lc1/b;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object p1

    iput-object p1, p0, La1/A;->c:LZ0/v;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;LQ0/e;)Ly2/a;
    .locals 9

    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v6

    iget-object v7, p0, La1/A;->a:Lc1/b;

    new-instance v8, La1/A$a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, La1/A$a;-><init>(La1/A;Lb1/c;Ljava/util/UUID;LQ0/e;Landroid/content/Context;)V

    invoke-interface {v7, v8}, Lc1/b;->c(Ljava/lang/Runnable;)V

    return-object v6
.end method
