.class public final Lc0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc0/i;

    invoke-direct {v0}, Lc0/i;-><init>()V

    sput-object v0, Lc0/i;->a:Lc0/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc0/w;Ld0/b;Ljava/util/List;LD3/I;)Lc0/h;
    .locals 1

    const-string p2, "storage"

    invoke-static {p1, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "migrations"

    invoke-static {p3, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "scope"

    invoke-static {p4, p2}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ld0/a;

    invoke-direct {p2}, Ld0/a;-><init>()V

    sget-object v0, Lc0/g;->a:Lc0/g$a;

    invoke-virtual {v0, p3}, Lc0/g$a;->b(Ljava/util/List;)Lu3/p;

    move-result-object p3

    invoke-static {p3}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    new-instance v0, Lc0/j;

    invoke-direct {v0, p1, p3, p2, p4}, Lc0/j;-><init>(Lc0/w;Ljava/util/List;Lc0/d;LD3/I;)V

    return-object v0
.end method
