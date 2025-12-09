.class public final LR0/g;
.super Lv0/b;
.source "SourceFile"


# static fields
.field public static final c:LR0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR0/g;

    invoke-direct {v0}, LR0/g;-><init>()V

    sput-object v0, LR0/g;->c:LR0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xc

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lv0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ly0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL "

    invoke-interface {p1, v0}, Ly0/g;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE workspec SET content_uri_triggers = x\'\' WHERE content_uri_triggers is NULL"

    invoke-interface {p1, v0}, Ly0/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method
