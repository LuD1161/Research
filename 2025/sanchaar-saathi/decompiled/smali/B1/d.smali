.class public final LB1/d;
.super Lv1/e;
.source "SourceFile"

# interfaces
.implements Lz1/t;


# static fields
.field public static final l:Lv1/a$g;

.field public static final m:Lv1/a$a;

.field public static final n:Lv1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lv1/a$g;

    invoke-direct {v0}, Lv1/a$g;-><init>()V

    sput-object v0, LB1/d;->l:Lv1/a$g;

    new-instance v1, LB1/b;

    invoke-direct {v1}, LB1/b;-><init>()V

    sput-object v1, LB1/d;->m:Lv1/a$a;

    new-instance v2, Lv1/a;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Lv1/a;-><init>(Ljava/lang/String;Lv1/a$a;Lv1/a$g;)V

    sput-object v2, LB1/d;->n:Lv1/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lz1/u;)V
    .locals 2

    sget-object v0, LB1/d;->n:Lv1/a;

    sget-object v1, Lv1/e$a;->c:Lv1/e$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lv1/e;-><init>(Landroid/content/Context;Lv1/a;Lv1/a$d;Lv1/e$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lz1/r;)LR1/f;
    .locals 2

    invoke-static {}, Lw1/n;->a()Lw1/n$a;

    move-result-object v0

    sget-object v1, LJ1/d;->a:Lu1/c;

    filled-new-array {v1}, [Lu1/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw1/n$a;->d([Lu1/c;)Lw1/n$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw1/n$a;->c(Z)Lw1/n$a;

    new-instance v1, LB1/c;

    invoke-direct {v1, p1}, LB1/c;-><init>(Lz1/r;)V

    invoke-virtual {v0, v1}, Lw1/n$a;->b(Lw1/k;)Lw1/n$a;

    invoke-virtual {v0}, Lw1/n$a;->a()Lw1/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv1/e;->e(Lw1/n;)LR1/f;

    move-result-object p1

    return-object p1
.end method
