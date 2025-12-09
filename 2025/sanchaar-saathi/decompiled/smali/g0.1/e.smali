.class public final Lg0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg0/e;

    invoke-direct {v0}, Lg0/e;-><init>()V

    sput-object v0, Lg0/e;->a:Lg0/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc0/w;Ld0/b;Ljava/util/List;LD3/I;)Lc0/h;
    .locals 2

    const-string v0, "storage"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "migrations"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg0/d;

    sget-object v1, Lc0/i;->a:Lc0/i;

    invoke-virtual {v1, p1, p2, p3, p4}, Lc0/i;->a(Lc0/w;Ld0/b;Ljava/util/List;LD3/I;)Lc0/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lg0/d;-><init>(Lc0/h;)V

    return-object v0
.end method

.method public final b(Ld0/b;Ljava/util/List;LD3/I;Lu3/a;)Lc0/h;
    .locals 8

    const-string v0, "migrations"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "produceFile"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le0/d;

    sget-object v2, LO3/h;->b:LO3/h;

    sget-object v3, Lg0/j;->a:Lg0/j;

    new-instance v5, Lg0/e$a;

    invoke-direct {v5, p4}, Lg0/e$a;-><init>(Lu3/a;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le0/d;-><init>(LO3/h;Le0/c;Lu3/p;Lu3/a;ILv3/g;)V

    invoke-virtual {p0, v0, p1, p2, p3}, Lg0/e;->a(Lc0/w;Ld0/b;Ljava/util/List;LD3/I;)Lc0/h;

    move-result-object p1

    new-instance p2, Lg0/d;

    invoke-direct {p2, p1}, Lg0/d;-><init>(Lc0/h;)V

    return-object p2
.end method
