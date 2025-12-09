.class public final LD3/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/i$b;
.implements Ll3/i$c;


# static fields
.field public static final e:LD3/M0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD3/M0;

    invoke-direct {v0}, LD3/M0;-><init>()V

    sput-object v0, LD3/M0;->e:LD3/M0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Ll3/i$c;)Ll3/i;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$b$a;->c(Ll3/i$b;Ll3/i$c;)Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ll3/i$b$a;->a(Ll3/i$b;Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ll3/i$c;)Ll3/i$b;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$b$a;->b(Ll3/i$b;Ll3/i$c;)Ll3/i$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ll3/i$c;
    .locals 0

    return-object p0
.end method

.method public h(Ll3/i;)Ll3/i;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$b$a;->d(Ll3/i$b;Ll3/i;)Ll3/i;

    move-result-object p1

    return-object p1
.end method
